(declare-fun b_ack!64 () (_ BitVec 64))
(declare-fun c_ack!65 () (_ BitVec 64))
(declare-fun d_ack!66 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun a_ack!67 () (_ BitVec 64))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!64) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!65) ((_ to_fp 11 53) #xbfe0000000000000))))
(assert (not (fp.leq (fp.sub roundNearestTiesToEven
                     ((_ to_fp 11 53) c_ack!65)
                     ((_ to_fp 11 53) roundNearestTiesToEven d_ack!66))
             ((_ to_fp 11 53) #xbfe0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!64) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!64) ((_ to_fp 11 53) #x3ff3333333333333)))
(assert (FPCHECK_FMUL_UNDERFLOW #x401921fb54442d18 a_ack!67))

(check-sat)
(exit)
