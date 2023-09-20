(declare-fun limit_ack!302 () (_ BitVec 64))
(declare-fun epsabs_ack!301 () (_ BitVec 64))
(assert (not (bvult #x00000000000003e8 limit_ack!302)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!301)
             ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
