(declare-fun a_ack!26 () (_ BitVec 32))
(declare-fun b_ack!25 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt a_ack!26 #x00000000)))
(assert (fp.lt ((_ to_fp 11 53) b_ack!25) ((_ to_fp 11 53) #x0000000000000000)))
(assert (= #x00000000 (bvand a_ack!26 #x00000001)))
(assert (= #x00000000 a_ack!26))
(assert (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x8000000000000000)
                       ((_ to_fp 11 53) b_ack!25)))
       ((_ to_fp 11 53) #x3e60000000000000)))
(assert (FPCHECK_FMUL_OVERFLOW
  (fp.abs (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) #x8000000000000000)
                  ((_ to_fp 11 53) b_ack!25)))
  (fp.abs (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) #x8000000000000000)
                  ((_ to_fp 11 53) b_ack!25)))))

(check-sat)
(exit)
