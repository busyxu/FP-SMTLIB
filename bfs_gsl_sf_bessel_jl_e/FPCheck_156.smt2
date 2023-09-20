(declare-fun a_ack!570 () (_ BitVec 32))
(declare-fun b_ack!569 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_cos ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun CF_sin ((_ BitVec 64)) (_ FloatingPoint 11 53))
(assert (not (bvslt a_ack!570 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!569) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!569) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #x00000000 a_ack!570)))
(assert (not (= #x00000001 a_ack!570)))
(assert (= #x00000002 a_ack!570))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!569) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!569))
            ((_ to_fp 11 53) #x2020000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!569))
            ((_ to_fp 11 53) #x3ff4cccccccccccd))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4008000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!569)
                                   ((_ to_fp 11 53) b_ack!569)))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!3 (fp.abs (fp.div roundNearestTiesToEven
                           (CF_cos b_ack!569)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!569)
                                   ((_ to_fp 11 53) b_ack!569))))))
(let ((a!2 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   a!1
                                   (CF_sin b_ack!569))
                           ((_ to_fp 11 53) b_ack!569))))
      (a!5 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven a!1 (CF_sin b_ack!569))
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   (CF_cos b_ack!569))
                           ((_ to_fp 11 53) b_ack!569)))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3cc0000000000000)
                   (fp.add roundNearestTiesToEven
                           a!2
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   a!3))))
      (a!6 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3cc0000000000000)
                   (fp.abs (fp.div roundNearestTiesToEven
                                   a!5
                                   ((_ to_fp 11 53) b_ack!569))))))
  (FPCHECK_FADD_ACCURACY a!4 a!6)))))

(check-sat)
(exit)
