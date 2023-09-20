(declare-fun x1_ack!5708 () (_ BitVec 64))
(declare-fun x0_ack!5712 () (_ BitVec 64))
(declare-fun x2_ack!5709 () (_ BitVec 64))
(declare-fun b_ack!5711 () (_ BitVec 64))
(declare-fun a_ack!5710 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!5712) ((_ to_fp 11 53) x1_ack!5708)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!5708) ((_ to_fp 11 53) x2_ack!5709)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5708)
                       ((_ to_fp 11 53) x0_ack!5712))
               ((_ to_fp 11 53) x0_ack!5712))
       ((_ to_fp 11 53) x1_ack!5708)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!5708)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5708)
                       ((_ to_fp 11 53) x0_ack!5712)))
       ((_ to_fp 11 53) x0_ack!5712)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5709)
                       ((_ to_fp 11 53) x1_ack!5708))
               ((_ to_fp 11 53) x1_ack!5708))
       ((_ to_fp 11 53) x2_ack!5709)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!5709)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5709)
                       ((_ to_fp 11 53) x1_ack!5708)))
       ((_ to_fp 11 53) x1_ack!5708)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!5708)
                    ((_ to_fp 11 53) x0_ack!5712))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!5709)
                    ((_ to_fp 11 53) x1_ack!5708))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!5710) ((_ to_fp 11 53) b_ack!5711))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5710) ((_ to_fp 11 53) x0_ack!5712))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!5711) ((_ to_fp 11 53) x2_ack!5709))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!5710) ((_ to_fp 11 53) b_ack!5711))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5710) ((_ to_fp 11 53) x0_ack!5712))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!5710) ((_ to_fp 11 53) x1_ack!5708))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!5711) ((_ to_fp 11 53) x0_ack!5712))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!5711) ((_ to_fp 11 53) x1_ack!5708)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!5708) ((_ to_fp 11 53) b_ack!5711))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!5708)
                    ((_ to_fp 11 53) x0_ack!5712))
            ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
