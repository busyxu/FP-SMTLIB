(declare-fun x1_ack!5763 () (_ BitVec 64))
(declare-fun x0_ack!5767 () (_ BitVec 64))
(declare-fun x2_ack!5764 () (_ BitVec 64))
(declare-fun b_ack!5766 () (_ BitVec 64))
(declare-fun a_ack!5765 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!5767) ((_ to_fp 11 53) x1_ack!5763)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!5763) ((_ to_fp 11 53) x2_ack!5764)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5763)
                       ((_ to_fp 11 53) x0_ack!5767))
               ((_ to_fp 11 53) x0_ack!5767))
       ((_ to_fp 11 53) x1_ack!5763)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!5763)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5763)
                       ((_ to_fp 11 53) x0_ack!5767)))
       ((_ to_fp 11 53) x0_ack!5767)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5764)
                       ((_ to_fp 11 53) x1_ack!5763))
               ((_ to_fp 11 53) x1_ack!5763))
       ((_ to_fp 11 53) x2_ack!5764)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!5764)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5764)
                       ((_ to_fp 11 53) x1_ack!5763)))
       ((_ to_fp 11 53) x1_ack!5763)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!5763)
                    ((_ to_fp 11 53) x0_ack!5767))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!5764)
                    ((_ to_fp 11 53) x1_ack!5763))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!5765) ((_ to_fp 11 53) b_ack!5766))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5765) ((_ to_fp 11 53) x0_ack!5767))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!5766) ((_ to_fp 11 53) x2_ack!5764))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!5765) ((_ to_fp 11 53) b_ack!5766))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5765) ((_ to_fp 11 53) x0_ack!5767))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!5765) ((_ to_fp 11 53) x1_ack!5763))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!5766) ((_ to_fp 11 53) x0_ack!5767))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!5766) ((_ to_fp 11 53) x1_ack!5763)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!5763) ((_ to_fp 11 53) b_ack!5766))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!5763)
                    ((_ to_fp 11 53) x0_ack!5767))
            ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
