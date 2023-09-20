(declare-fun x1_ack!6341 () (_ BitVec 64))
(declare-fun x0_ack!6345 () (_ BitVec 64))
(declare-fun x2_ack!6342 () (_ BitVec 64))
(declare-fun b_ack!6344 () (_ BitVec 64))
(declare-fun a_ack!6343 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!6345) ((_ to_fp 11 53) x1_ack!6341)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!6341) ((_ to_fp 11 53) x2_ack!6342)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6341)
                       ((_ to_fp 11 53) x0_ack!6345))
               ((_ to_fp 11 53) x0_ack!6345))
       ((_ to_fp 11 53) x1_ack!6341)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!6341)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6341)
                       ((_ to_fp 11 53) x0_ack!6345)))
       ((_ to_fp 11 53) x0_ack!6345)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6342)
                       ((_ to_fp 11 53) x1_ack!6341))
               ((_ to_fp 11 53) x1_ack!6341))
       ((_ to_fp 11 53) x2_ack!6342)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!6342)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6342)
                       ((_ to_fp 11 53) x1_ack!6341)))
       ((_ to_fp 11 53) x1_ack!6341)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!6341)
                    ((_ to_fp 11 53) x0_ack!6345))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!6342)
                    ((_ to_fp 11 53) x1_ack!6341))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!6343) ((_ to_fp 11 53) b_ack!6344))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6343) ((_ to_fp 11 53) x0_ack!6345))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!6344) ((_ to_fp 11 53) x2_ack!6342))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!6343) ((_ to_fp 11 53) b_ack!6344))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6343) ((_ to_fp 11 53) x0_ack!6345))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!6343) ((_ to_fp 11 53) x1_ack!6341)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!6341) ((_ to_fp 11 53) a_ack!6343))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!6344) ((_ to_fp 11 53) x1_ack!6341))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!6344) ((_ to_fp 11 53) x2_ack!6342))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!6342)
                    ((_ to_fp 11 53) x1_ack!6341))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FSUB_OVERFLOW a_ack!6343 x1_ack!6341))

(check-sat)
(exit)
