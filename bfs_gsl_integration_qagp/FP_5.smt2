(declare-fun limit_ack!172 () (_ BitVec 64))
(declare-fun epsabs_ack!177 () (_ BitVec 64))
(declare-fun a_ack!178 () (_ BitVec 64))
(declare-fun x1_ack!173 () (_ BitVec 64))
(declare-fun x2_ack!174 () (_ BitVec 64))
(declare-fun x3_ack!175 () (_ BitVec 64))
(declare-fun b_ack!176 () (_ BitVec 64))
(assert (not (bvult #x00000000000003e8 limit_ack!172)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!177)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!173) ((_ to_fp 11 53) a_ack!178))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!174) ((_ to_fp 11 53) x1_ack!173))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!175) ((_ to_fp 11 53) x2_ack!174))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!176) ((_ to_fp 11 53) x3_ack!175))))

(check-sat)
(exit)
