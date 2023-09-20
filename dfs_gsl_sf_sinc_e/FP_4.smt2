(declare-fun a_ack!30 () (_ BitVec 64))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!30))
            ((_ to_fp 11 53) #x3fe999999999999a))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!30)) ((_ to_fp 11 53) #x4059000000000000)))

(check-sat)
(exit)
