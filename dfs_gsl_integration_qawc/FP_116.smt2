(declare-fun limit_ack!5586 () (_ BitVec 64))
(declare-fun a_ack!5587 () (_ BitVec 64))
(declare-fun b_ack!5583 () (_ BitVec 64))
(declare-fun epsabs_ack!5585 () (_ BitVec 64))
(declare-fun c_ack!5584 () (_ BitVec 64))
(assert (not (bvult #x00000000000003e8 limit_ack!5586)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!5583) ((_ to_fp 11 53) a_ack!5587))))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!5585)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!5584) ((_ to_fp 11 53) a_ack!5587))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!5584) ((_ to_fp 11 53) b_ack!5583))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!5583)
                       ((_ to_fp 11 53) a_ack!5587))
               ((_ to_fp 11 53) a_ack!5587))
       ((_ to_fp 11 53) b_ack!5583)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) b_ack!5583)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!5583)
                       ((_ to_fp 11 53) a_ack!5587)))
       ((_ to_fp 11 53) a_ack!5587)))

(check-sat)
(exit)
