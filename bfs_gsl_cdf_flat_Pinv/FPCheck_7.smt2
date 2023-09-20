(declare-fun x_ack!26 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun b_ack!25 () (_ BitVec 64))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!26) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!26) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) x_ack!26))
               ((_ to_fp 11 53) x_ack!26))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) x_ack!26)))
       ((_ to_fp 11 53) x_ack!26)))
(assert (FPCHECK_FMUL_UNDERFLOW x_ack!26 b_ack!25))

(check-sat)
(exit)
