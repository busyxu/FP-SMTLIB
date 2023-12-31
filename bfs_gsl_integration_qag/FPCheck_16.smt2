(declare-fun key_ack!181 () (_ BitVec 32))
(declare-fun limit_ack!180 () (_ BitVec 64))
(declare-fun epsabs_ack!178 () (_ BitVec 64))
(declare-fun epsrel_ack!179 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun b_ack!177 () (_ BitVec 64))
(declare-fun a_ack!182 () (_ BitVec 64))
(assert (bvslt key_ack!181 #x00000001))
(assert (not (bvult #x00000000000003e8 limit_ack!180)))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!178) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!179)
            ((_ to_fp 11 53) #x3d09000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!179)
            ((_ to_fp 11 53) #x3a0fb0f6be506019))))
(assert (FPCHECK_FADD_UNDERFLOW a_ack!182 b_ack!177))

(check-sat)
(exit)
