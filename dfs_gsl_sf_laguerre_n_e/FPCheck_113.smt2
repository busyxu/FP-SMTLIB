(declare-fun a_ack!384 () (_ BitVec 32))
(declare-fun c_ack!383 () (_ BitVec 64))
(declare-fun b_ack!382 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt a_ack!384 #x00000000)))
(assert (not (= #x00000000 a_ack!384)))
(assert (not (= #x00000001 a_ack!384)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!383) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!383) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt a_ack!384 #x00000005)))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!383) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt ((_ to_fp 11 53) roundNearestTiesToEven a_ack!384)
       ((_ to_fp 11 53) #x416312d000000000)))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!383) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!382) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!382) ((_ to_fp 11 53) #xc000000000000000))))
(assert (bvslt #x00000002 a_ack!384))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4010000000000000)
                                   ((_ to_fp 11 53) b_ack!382))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) c_ack!383)))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) b_ack!382)))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) b_ack!382))))
      (a!3 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) b_ack!382)))
                   ((_ to_fp 11 53) c_ack!383)))
      (a!4 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbfe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) b_ack!382)))
                   ((_ to_fp 11 53) c_ack!383))))
(let ((a!5 (fp.add roundNearestTiesToEven
                   a!2
                   (fp.mul roundNearestTiesToEven
                           a!3
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!4)))))
  (FPCHECK_FMUL_OVERFLOW a!1 a!5))))

(check-sat)
(exit)
