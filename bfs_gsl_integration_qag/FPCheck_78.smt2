(declare-fun key_ack!851 () (_ BitVec 32))
(declare-fun limit_ack!850 () (_ BitVec 64))
(declare-fun epsabs_ack!848 () (_ BitVec 64))
(declare-fun epsrel_ack!849 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun a_ack!852 () (_ BitVec 64))
(declare-fun b_ack!847 () (_ BitVec 64))
(assert (bvslt key_ack!851 #x00000001))
(assert (not (bvult #x00000000000003e8 limit_ack!850)))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!848) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!849)
            ((_ to_fp 11 53) #x3d09000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!849)
            ((_ to_fp 11 53) #x3a0fb0f6be506019))))
(assert (FPCHECK_FSUB_UNDERFLOW b_ack!847 a_ack!852))

(check-sat)
(exit)
