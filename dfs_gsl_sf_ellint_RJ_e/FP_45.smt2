(declare-fun e_ack!1344 () (_ BitVec 32))
(declare-fun a_ack!1345 () (_ BitVec 64))
(declare-fun b_ack!1341 () (_ BitVec 64))
(declare-fun c_ack!1342 () (_ BitVec 64))
(declare-fun d_ack!1343 () (_ BitVec 64))
(assert (bvult (bvmul #x0000000000000008
              (concat #x00000000 (bvand e_ack!1344 #x00000007)))
       #x0000000000000011))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1345) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1341) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!1342) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!1345)
                    ((_ to_fp 11 53) b_ack!1341))
            ((_ to_fp 11 53) #x2ab13c484138708e))))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!1345)
                    ((_ to_fp 11 53) c_ack!1342))
            ((_ to_fp 11 53) #x2ab13c484138708e))))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) b_ack!1341)
                    ((_ to_fp 11 53) c_ack!1342))
            ((_ to_fp 11 53) #x2ab13c484138708e))))
(assert (not (fp.lt ((_ to_fp 11 53) d_ack!1343) ((_ to_fp 11 53) #x2ab13c484138708e))))
(assert (fp.gt ((_ to_fp 11 53) a_ack!1345) ((_ to_fp 11 53) b_ack!1341)))
(assert (fp.gt ((_ to_fp 11 53) a_ack!1345) ((_ to_fp 11 53) c_ack!1342)))
(assert (fp.gt ((_ to_fp 11 53) a_ack!1345) ((_ to_fp 11 53) d_ack!1343)))
(assert (fp.lt ((_ to_fp 11 53) a_ack!1345) ((_ to_fp 11 53) #x551c4b19c41f715f)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!1345)
                       ((_ to_fp 11 53) b_ack!1341))
               ((_ to_fp 11 53) a_ack!1345))
       ((_ to_fp 11 53) b_ack!1341)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!1345)
                       ((_ to_fp 11 53) b_ack!1341))
               ((_ to_fp 11 53) b_ack!1341))
       ((_ to_fp 11 53) a_ack!1345)))

(check-sat)
(exit)
