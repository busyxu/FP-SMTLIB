(declare-fun x1_ack!5345 () (_ BitVec 64))
(declare-fun x0_ack!5349 () (_ BitVec 64))
(declare-fun x2_ack!5346 () (_ BitVec 64))
(declare-fun b_ack!5348 () (_ BitVec 64))
(declare-fun a_ack!5347 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!5349) ((_ to_fp 11 53) x1_ack!5345)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!5345) ((_ to_fp 11 53) x2_ack!5346)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5345)
                       ((_ to_fp 11 53) x0_ack!5349))
               ((_ to_fp 11 53) x0_ack!5349))
       ((_ to_fp 11 53) x1_ack!5345)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!5345)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5345)
                       ((_ to_fp 11 53) x0_ack!5349)))
       ((_ to_fp 11 53) x0_ack!5349)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5346)
                       ((_ to_fp 11 53) x1_ack!5345))
               ((_ to_fp 11 53) x1_ack!5345))
       ((_ to_fp 11 53) x2_ack!5346)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!5346)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5346)
                       ((_ to_fp 11 53) x1_ack!5345)))
       ((_ to_fp 11 53) x1_ack!5345)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!5345)
                    ((_ to_fp 11 53) x0_ack!5349))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!5346)
                    ((_ to_fp 11 53) x1_ack!5345))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!5347) ((_ to_fp 11 53) b_ack!5348))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5347) ((_ to_fp 11 53) x0_ack!5349))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!5348) ((_ to_fp 11 53) x2_ack!5346))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!5347) ((_ to_fp 11 53) b_ack!5348))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5347) ((_ to_fp 11 53) x0_ack!5349))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!5347) ((_ to_fp 11 53) x1_ack!5345))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!5348) ((_ to_fp 11 53) x0_ack!5349))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!5348) ((_ to_fp 11 53) x1_ack!5345)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!5345) ((_ to_fp 11 53) b_ack!5348))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!5345)
                    ((_ to_fp 11 53) x0_ack!5349))
            ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
