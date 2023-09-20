(declare-fun b_ack!6 () (_ BitVec 64))
(declare-fun a_ack!7 () (_ BitVec 32))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (fp.lt ((_ to_fp 11 53) b_ack!6) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (bvslt a_ack!7 #x00000000)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    ((_ to_fp 11 53) b_ack!6))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (= #x00000000 a_ack!7))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    ((_ to_fp 11 53) b_ack!6))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x8000000000000000)
                       ((_ to_fp 11 53) b_ack!6)))
       ((_ to_fp 11 53) #x3fc999999999999a)))
(assert (FPCHECK_FSUB_OVERFLOW
  #x8000000000000000
  (fp.abs (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) #x8000000000000000)
                  ((_ to_fp 11 53) b_ack!6)))))

(check-sat)
(exit)
