(declare-fun limit_ack!202 () (_ BitVec 64))
(declare-fun epsabs_ack!201 () (_ BitVec 64))
(assert (not (bvult #x00000000000003e8 limit_ack!202)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!201)
             ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
