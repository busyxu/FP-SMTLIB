(declare-fun a_ack!5420 () (_ BitVec 64))
(declare-fun b_ack!5419 () (_ BitVec 64))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!5420) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!5419) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5420) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!5419) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt ((_ to_fp 11 53) a_ack!5420) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.gt ((_ to_fp 11 53) b_ack!5419) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!5420) ((_ to_fp 11 53) b_ack!5419))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5420) ((_ to_fp 11 53) b_ack!5419))))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) b_ack!5419)
                    ((_ to_fp 11 53) b_ack!5419))
            ((_ to_fp 11 53) #x3fc999999999999a))))

(check-sat)
(exit)
