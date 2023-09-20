(declare-fun a_ack!27 () (_ BitVec 64))
(declare-fun b_ack!26 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (not (fp.eq ((_ to_fp 11 53) a_ack!27)
                 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!26) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!27))
            (fp.abs ((_ to_fp 11 53) b_ack!26)))))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!27))
            (fp.abs ((_ to_fp 11 53) b_ack!26)))))
(assert (FPCHECK_FMUL_UNDERFLOW
  (fp.div roundNearestTiesToEven
          (fp.abs ((_ to_fp 11 53) b_ack!26))
          (fp.abs ((_ to_fp 11 53) b_ack!26)))
  (fp.div roundNearestTiesToEven
          (fp.abs ((_ to_fp 11 53) b_ack!26))
          (fp.abs ((_ to_fp 11 53) b_ack!26)))))

(check-sat)
(exit)
