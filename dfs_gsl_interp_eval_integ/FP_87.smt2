(declare-fun x1_ack!4945 () (_ BitVec 64))
(declare-fun x0_ack!4949 () (_ BitVec 64))
(declare-fun x2_ack!4946 () (_ BitVec 64))
(declare-fun b_ack!4948 () (_ BitVec 64))
(declare-fun a_ack!4947 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!4949) ((_ to_fp 11 53) x1_ack!4945)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!4945) ((_ to_fp 11 53) x2_ack!4946)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4945)
                       ((_ to_fp 11 53) x0_ack!4949))
               ((_ to_fp 11 53) x0_ack!4949))
       ((_ to_fp 11 53) x1_ack!4945)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!4945)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4945)
                       ((_ to_fp 11 53) x0_ack!4949)))
       ((_ to_fp 11 53) x0_ack!4949)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4946)
                       ((_ to_fp 11 53) x1_ack!4945))
               ((_ to_fp 11 53) x1_ack!4945))
       ((_ to_fp 11 53) x2_ack!4946)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!4946)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4946)
                       ((_ to_fp 11 53) x1_ack!4945)))
       ((_ to_fp 11 53) x1_ack!4945)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!4945)
                    ((_ to_fp 11 53) x0_ack!4949))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!4946)
                    ((_ to_fp 11 53) x1_ack!4945))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!4947) ((_ to_fp 11 53) b_ack!4948))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4947) ((_ to_fp 11 53) x0_ack!4949))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!4948) ((_ to_fp 11 53) x2_ack!4946))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!4947) ((_ to_fp 11 53) b_ack!4948))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4947) ((_ to_fp 11 53) x0_ack!4949))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!4947) ((_ to_fp 11 53) x1_ack!4945)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!4945) ((_ to_fp 11 53) a_ack!4947))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!4948) ((_ to_fp 11 53) x1_ack!4945))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!4948) ((_ to_fp 11 53) x2_ack!4946)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!4946)
                    ((_ to_fp 11 53) x1_ack!4945))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!4947)
                       ((_ to_fp 11 53) x1_ack!4945))
               ((_ to_fp 11 53) x1_ack!4945))
       ((_ to_fp 11 53) a_ack!4947)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) a_ack!4947)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!4947)
                       ((_ to_fp 11 53) x1_ack!4945)))
       ((_ to_fp 11 53) x1_ack!4945)))

(check-sat)
(exit)
