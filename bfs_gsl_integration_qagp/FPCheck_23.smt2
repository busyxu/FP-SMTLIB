(declare-fun limit_ack!383 () (_ BitVec 64))
(declare-fun epsabs_ack!388 () (_ BitVec 64))
(declare-fun epsrel_ack!382 () (_ BitVec 64))
(declare-fun a_ack!389 () (_ BitVec 64))
(declare-fun x1_ack!384 () (_ BitVec 64))
(declare-fun x2_ack!385 () (_ BitVec 64))
(declare-fun x3_ack!386 () (_ BitVec 64))
(declare-fun b_ack!387 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!383)))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!388) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!382)
            ((_ to_fp 11 53) #x3d09000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!382)
            ((_ to_fp 11 53) #x3a0fb0f6be506019))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!384) ((_ to_fp 11 53) a_ack!389))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!385) ((_ to_fp 11 53) x1_ack!384))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!386) ((_ to_fp 11 53) x2_ack!385))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!387) ((_ to_fp 11 53) x3_ack!386))))
(assert (FPCHECK_FSUB_ACCURACY x1_ack!384 a_ack!389))

(check-sat)
(exit)
