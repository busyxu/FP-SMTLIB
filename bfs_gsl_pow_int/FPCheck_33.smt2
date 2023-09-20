(declare-fun n_ack!145 () (_ BitVec 32))
(declare-fun x_ack!146 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (bvslt n_ack!145 #x00000000))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!146) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #x00000000 (bvand (bvsub #x00000000 n_ack!145) #x00000001))))
(assert (FPCHECK_FMUL_OVERFLOW
  #x3ff0000000000000
  (fp.div roundNearestTiesToEven
          ((_ to_fp 11 53) #x3ff0000000000000)
          ((_ to_fp 11 53) x_ack!146))))

(check-sat)
(exit)
