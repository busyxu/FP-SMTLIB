(declare-fun limit_ack!236 () (_ BitVec 64))
(declare-fun epsabs_ack!235 () (_ BitVec 64))
(assert (not (bvult #x00000000000003e8 limit_ack!236)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!235)
             ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
