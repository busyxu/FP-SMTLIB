(declare-fun a_ack!348 () (_ BitVec 64))
(declare-fun b_ack!347 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!348) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!347) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!347) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!348) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!347)
             (fp.mul roundNearestTiesToEven
                     ((_ to_fp 11 53) #x3fe0000000000000)
                     ((_ to_fp 11 53) a_ack!348)))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!348) ((_ to_fp 11 53) #x412e848000000000)))
(assert (fp.lt (fp.mul roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!347)
                       ((_ to_fp 11 53) a_ack!348))
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!347)
                       ((_ to_fp 11 53) a_ack!348)))
       ((_ to_fp 11 53) a_ack!348)))
(assert (FPCHECK_FSUB_UNDERFLOW b_ack!347 a_ack!348))

(check-sat)
(exit)
