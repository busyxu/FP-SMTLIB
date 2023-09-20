(declare-fun x1_ack!5106 () (_ BitVec 64))
(declare-fun x0_ack!5110 () (_ BitVec 64))
(declare-fun x2_ack!5107 () (_ BitVec 64))
(declare-fun b_ack!5109 () (_ BitVec 64))
(declare-fun a_ack!5108 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!5110) ((_ to_fp 11 53) x1_ack!5106)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!5106) ((_ to_fp 11 53) x2_ack!5107)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5106)
                       ((_ to_fp 11 53) x0_ack!5110))
               ((_ to_fp 11 53) x0_ack!5110))
       ((_ to_fp 11 53) x1_ack!5106)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!5106)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5106)
                       ((_ to_fp 11 53) x0_ack!5110)))
       ((_ to_fp 11 53) x0_ack!5110)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5107)
                       ((_ to_fp 11 53) x1_ack!5106))
               ((_ to_fp 11 53) x1_ack!5106))
       ((_ to_fp 11 53) x2_ack!5107)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!5107)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5107)
                       ((_ to_fp 11 53) x1_ack!5106)))
       ((_ to_fp 11 53) x1_ack!5106)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!5106)
                    ((_ to_fp 11 53) x0_ack!5110))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!5107)
                    ((_ to_fp 11 53) x1_ack!5106))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!5108) ((_ to_fp 11 53) b_ack!5109))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5108) ((_ to_fp 11 53) x0_ack!5110))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!5109) ((_ to_fp 11 53) x2_ack!5107))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!5108) ((_ to_fp 11 53) b_ack!5109))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5108) ((_ to_fp 11 53) x0_ack!5110))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!5108) ((_ to_fp 11 53) x1_ack!5106))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!5109) ((_ to_fp 11 53) x0_ack!5110))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!5109) ((_ to_fp 11 53) x1_ack!5106)))
(assert (fp.gt ((_ to_fp 11 53) x1_ack!5106) ((_ to_fp 11 53) b_ack!5109)))

(check-sat)
(exit)
