(declare-fun limit_ack!1 () (_ BitVec 64))
(declare-fun epsabs_ack!2 () (_ BitVec 64))
(declare-fun epsrel_ack!0 () (_ BitVec 64))
(assert (not (bvult #x00000000000003e8 limit_ack!1)))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!2) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!0) ((_ to_fp 11 53) #x3d09000000000000))))

(check-sat)
(exit)
