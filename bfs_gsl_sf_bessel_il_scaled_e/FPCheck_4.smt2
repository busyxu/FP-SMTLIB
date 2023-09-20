(declare-fun b_ack!8 () (_ BitVec 64))
(declare-fun a_ack!9 () (_ BitVec 32))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) b_ack!8) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (bvslt a_ack!9 #x00000000)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    ((_ to_fp 11 53) b_ack!8))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (= #x00000000 a_ack!9))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    ((_ to_fp 11 53) b_ack!8))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x8000000000000000)
                       ((_ to_fp 11 53) b_ack!8)))
       ((_ to_fp 11 53) #x3fc999999999999a)))
(assert (FPCHECK_FSUB_UNDERFLOW
  #x8000000000000000
  (fp.abs (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) #x8000000000000000)
                  ((_ to_fp 11 53) b_ack!8)))))

(check-sat)
(exit)
