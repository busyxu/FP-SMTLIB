(declare-fun b_ack!152 () (_ BitVec 64))
(declare-fun a_ack!154 () (_ BitVec 32))
(declare-fun FPCHECK_FSUB_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun c_ack!153 () (_ BitVec 64))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!152) ((_ to_fp 11 53) #xbfe0000000000000))))
(assert (not (bvslt a_ack!154 #x00000000)))
(assert (not (= #x00000000 a_ack!154)))
(assert (fp.eq ((_ to_fp 11 53) b_ack!152) ((_ to_fp 11 53) #x0000000000000000)))
(assert (bvsle #x00000002 a_ack!154))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) b_ack!152))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!2 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) b_ack!152)))
                   ((_ to_fp 11 53) #x4000000000000000))))
  (FPCHECK_FSUB_ACCURACY
    (fp.mul roundNearestTiesToEven
            (fp.mul roundNearestTiesToEven a!1 ((_ to_fp 11 53) c_ack!153))
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4000000000000000)
                    ((_ to_fp 11 53) c_ack!153)))
    (fp.mul roundNearestTiesToEven a!2 ((_ to_fp 11 53) #x3ff0000000000000)))))

(check-sat)
(exit)
