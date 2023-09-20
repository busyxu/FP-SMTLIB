(declare-fun b_ack!57 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun a_ack!58 () (_ BitVec 64))
(assert (not (bvslt b_ack!57 #x00000000)))
(assert (not (= #x00000000 (bvand b_ack!57 #x00000001))))
(assert (= #x00000000
   (ite (= ((_ extract 31 31) b_ack!57) #b1)
        (concat #b1 ((_ extract 31 1) b_ack!57))
        (concat #b0 ((_ extract 31 1) b_ack!57)))))
(assert (FPCHECK_FMUL_ACCURACY
  #x3cd0000000000000
  (fp.abs (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) #x3ff0000000000000)
                  ((_ to_fp 11 53) a_ack!58)))))

(check-sat)
(exit)
