(declare-fun a_ack!2025 () (_ BitVec 32))
(declare-fun b_ack!2024 () (_ BitVec 32))
(assert (not (bvslt a_ack!2025 #x00000000)))
(assert (not (bvslt b_ack!2024 #x00000000)))
(assert (not (= #x00000000 a_ack!2025)))
(assert (= #x00000001 a_ack!2025))

(check-sat)
(exit)
