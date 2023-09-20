(declare-fun b_ack!37 () (_ BitVec 64))
(declare-fun a_ack!38 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!37) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt ((_ to_fp 11 53) a_ack!38) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.gt (fp.add roundNearestTiesToEven
               ((_ to_fp 11 53) a_ack!38)
               ((_ to_fp 11 53) b_ack!37))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (FPCHECK_FMUL_ACCURACY #x3fb999999999999a a_ack!38))

(check-sat)
(exit)
