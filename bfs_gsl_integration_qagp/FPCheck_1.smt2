(declare-fun limit_ack!17 () (_ BitVec 64))
(declare-fun epsabs_ack!22 () (_ BitVec 64))
(declare-fun a_ack!23 () (_ BitVec 64))
(declare-fun x1_ack!18 () (_ BitVec 64))
(declare-fun x2_ack!19 () (_ BitVec 64))
(declare-fun x3_ack!20 () (_ BitVec 64))
(declare-fun b_ack!21 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!17)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!22)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!18) ((_ to_fp 11 53) a_ack!23))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!19) ((_ to_fp 11 53) x1_ack!18))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!20) ((_ to_fp 11 53) x2_ack!19))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!21) ((_ to_fp 11 53) x3_ack!20))))
(assert (FPCHECK_FADD_UNDERFLOW a_ack!23 x1_ack!18))

(check-sat)
(exit)
