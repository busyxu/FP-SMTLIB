(declare-fun x1_ack!5045 () (_ BitVec 64))
(declare-fun x0_ack!5049 () (_ BitVec 64))
(declare-fun x2_ack!5046 () (_ BitVec 64))
(declare-fun b_ack!5048 () (_ BitVec 64))
(declare-fun a_ack!5047 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!5049) ((_ to_fp 11 53) x1_ack!5045)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!5045) ((_ to_fp 11 53) x2_ack!5046)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5045)
                       ((_ to_fp 11 53) x0_ack!5049))
               ((_ to_fp 11 53) x0_ack!5049))
       ((_ to_fp 11 53) x1_ack!5045)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!5045)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5045)
                       ((_ to_fp 11 53) x0_ack!5049)))
       ((_ to_fp 11 53) x0_ack!5049)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5046)
                       ((_ to_fp 11 53) x1_ack!5045))
               ((_ to_fp 11 53) x1_ack!5045))
       ((_ to_fp 11 53) x2_ack!5046)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!5046)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5046)
                       ((_ to_fp 11 53) x1_ack!5045)))
       ((_ to_fp 11 53) x1_ack!5045)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!5045)
                    ((_ to_fp 11 53) x0_ack!5049))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!5046)
                    ((_ to_fp 11 53) x1_ack!5045))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!5047) ((_ to_fp 11 53) b_ack!5048))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5047) ((_ to_fp 11 53) x0_ack!5049))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!5048) ((_ to_fp 11 53) x2_ack!5046))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!5047) ((_ to_fp 11 53) b_ack!5048))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5047) ((_ to_fp 11 53) x0_ack!5049))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!5047) ((_ to_fp 11 53) x1_ack!5045))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!5048) ((_ to_fp 11 53) x0_ack!5049))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!5048) ((_ to_fp 11 53) x1_ack!5045)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!5045) ((_ to_fp 11 53) b_ack!5048))))

(check-sat)
(exit)
