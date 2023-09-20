(declare-fun a_ack!6043 () (_ BitVec 32))
(declare-fun b_ack!6042 () (_ BitVec 32))
(assert (bvslt a_ack!6043 #x00000000))
(assert (not (bvsle #x00000000 (bvsub b_ack!6042 a_ack!6043))))

(check-sat)
(exit)
