(declare-fun a_ack!176 () (_ BitVec 32))
(declare-fun b_ack!175 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt a_ack!176 #x00000000)))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!175) ((_ to_fp 11 53) #x0000000000000000))))
(assert (= #x00000000 a_ack!176))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!175) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!175) ((_ to_fp 11 53) #x0004000000000000))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!175))
       ((_ to_fp 11 53) #x3f20000000000000)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!175)
                                   ((_ to_fp 11 53) b_ack!175))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!175)
                                   ((_ to_fp 11 53) b_ack!175)))
                   ((_ to_fp 11 53) #x4028000000000000)))
      (a!2 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!175)
                                   ((_ to_fp 11 53) b_ack!175))))))
(let ((a!3 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!2)
                           ((_ to_fp 11 53) b_ack!175)))))
  (FPCHECK_FADD_ACCURACY
    (fp.abs (fp.div roundNearestTiesToEven
                    (fp.abs a!1)
                    ((_ to_fp 11 53) b_ack!175)))
    (fp.mul roundNearestTiesToEven ((_ to_fp 11 53) #x3cc0000000000000) a!3)))))

(check-sat)
(exit)
