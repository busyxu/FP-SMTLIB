(declare-fun x1_ack!5005 () (_ BitVec 64))
(declare-fun x0_ack!5009 () (_ BitVec 64))
(declare-fun x2_ack!5006 () (_ BitVec 64))
(declare-fun b_ack!5008 () (_ BitVec 64))
(declare-fun a_ack!5007 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!5009) ((_ to_fp 11 53) x1_ack!5005)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!5005) ((_ to_fp 11 53) x2_ack!5006)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5005)
                       ((_ to_fp 11 53) x0_ack!5009))
               ((_ to_fp 11 53) x0_ack!5009))
       ((_ to_fp 11 53) x1_ack!5005)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!5005)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5005)
                       ((_ to_fp 11 53) x0_ack!5009)))
       ((_ to_fp 11 53) x0_ack!5009)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5006)
                       ((_ to_fp 11 53) x1_ack!5005))
               ((_ to_fp 11 53) x1_ack!5005))
       ((_ to_fp 11 53) x2_ack!5006)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!5006)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5006)
                       ((_ to_fp 11 53) x1_ack!5005)))
       ((_ to_fp 11 53) x1_ack!5005)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!5005)
                    ((_ to_fp 11 53) x0_ack!5009))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!5006)
                    ((_ to_fp 11 53) x1_ack!5005))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!5007) ((_ to_fp 11 53) b_ack!5008))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5007) ((_ to_fp 11 53) x0_ack!5009))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!5008) ((_ to_fp 11 53) x2_ack!5006))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!5007) ((_ to_fp 11 53) b_ack!5008))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5007) ((_ to_fp 11 53) x0_ack!5009))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!5007) ((_ to_fp 11 53) x1_ack!5005))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!5008) ((_ to_fp 11 53) x0_ack!5009))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!5008) ((_ to_fp 11 53) x1_ack!5005)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!5005) ((_ to_fp 11 53) b_ack!5008))))

(check-sat)
(exit)
