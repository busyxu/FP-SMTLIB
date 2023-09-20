(declare-fun b_ack!2147 () (_ BitVec 64))
(declare-fun a_ack!2149 () (_ BitVec 32))
(declare-fun c_ack!2148 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!2147) ((_ to_fp 11 53) #xbfe0000000000000))))
(assert (not (bvslt a_ack!2149 #x00000000)))
(assert (not (= #x00000000 a_ack!2149)))
(assert (not (= #x00000001 a_ack!2149)))
(assert (not (= #x00000002 a_ack!2149)))
(assert (not (= #x00000003 a_ack!2149)))
(assert (fp.eq ((_ to_fp 11 53) b_ack!2147) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.geq ((_ to_fp 11 53) c_ack!2148) ((_ to_fp 11 53) #xbff0000000000000)))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!2148) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq ((_ to_fp 11 53) b_ack!2147) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.eq ((_ to_fp 11 53) b_ack!2147) ((_ to_fp 11 53) #x0000000000000000)))
(assert (bvsle #x00000004 a_ack!2149))
(assert (not (bvsle #x00000005 a_ack!2149)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4010000000000000)
                                   ((_ to_fp 11 53) b_ack!2147))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xc000000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff5555555555555)
                                   ((_ to_fp 11 53) c_ack!2148))
                           ((_ to_fp 11 53) c_ack!2148))))
      (a!3 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4010000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) b_ack!2147)))
                   ((_ to_fp 11 53) #x4000000000000000)))
      (a!4 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) c_ack!2148))
                           ((_ to_fp 11 53) c_ack!2148)))))
(let ((a!5 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) c_ack!2148))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!2148)
                                   a!2))
                   (fp.mul roundNearestTiesToEven a!3 a!4))))
  (FPCHECK_FMUL_UNDERFLOW
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x3cb0000000000000)
            ((_ to_fp 11 53) roundNearestTiesToEven a_ack!2149))
    (fp.abs (fp.div roundNearestTiesToEven
                    a!5
                    ((_ to_fp 11 53) #x4010000000000000)))))))

(check-sat)
(exit)
