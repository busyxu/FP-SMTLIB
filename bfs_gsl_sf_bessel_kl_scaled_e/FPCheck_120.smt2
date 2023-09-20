(declare-fun a_ack!442 () (_ BitVec 32))
(declare-fun b_ack!441 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (bvslt a_ack!442 #x00000000)))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!441) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #x00000000 a_ack!442)))
(assert (not (= #x00000001 a_ack!442)))
(assert (not (= #x00000002 a_ack!442)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!441) ((_ to_fp 11 53) #x4008000000000000))))
(assert (fp.gt (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ed965fea53d6e41)
               ((_ to_fp 11 53) b_ack!441))
       ((_ to_fp 11 53)
         roundNearestTiesToEven
         (bvadd #x00000001 (bvmul a_ack!442 a_ack!442) a_ack!442))))
(assert (FPCHECK_FMUL_OVERFLOW #x4020000000000000 b_ack!441))

(check-sat)
(exit)
