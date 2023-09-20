(declare-fun x1_ack!752 () (_ BitVec 64))
(declare-fun x0_ack!756 () (_ BitVec 64))
(declare-fun x2_ack!753 () (_ BitVec 64))
(declare-fun b_ack!755 () (_ BitVec 64))
(declare-fun a_ack!754 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!756) ((_ to_fp 11 53) x1_ack!752)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!752) ((_ to_fp 11 53) x2_ack!753)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!752)
                       ((_ to_fp 11 53) x0_ack!756))
               ((_ to_fp 11 53) x0_ack!756))
       ((_ to_fp 11 53) x1_ack!752)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!752)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!752)
                       ((_ to_fp 11 53) x0_ack!756)))
       ((_ to_fp 11 53) x0_ack!756)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!753)
                       ((_ to_fp 11 53) x1_ack!752))
               ((_ to_fp 11 53) x1_ack!752))
       ((_ to_fp 11 53) x2_ack!753)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!753)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!753)
                       ((_ to_fp 11 53) x1_ack!752)))
       ((_ to_fp 11 53) x1_ack!752)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!752)
                    ((_ to_fp 11 53) x0_ack!756))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!753)
                    ((_ to_fp 11 53) x1_ack!752))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!754) ((_ to_fp 11 53) b_ack!755))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!754) ((_ to_fp 11 53) x0_ack!756))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!755) ((_ to_fp 11 53) x2_ack!753))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!754) ((_ to_fp 11 53) b_ack!755))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!754) ((_ to_fp 11 53) x0_ack!756))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!754) ((_ to_fp 11 53) x1_ack!752))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!755) ((_ to_fp 11 53) x0_ack!756)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!752)
                    ((_ to_fp 11 53) x0_ack!756))
            ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
