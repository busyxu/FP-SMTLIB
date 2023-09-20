(declare-fun x1_ack!526 () (_ BitVec 64))
(declare-fun x0_ack!532 () (_ BitVec 64))
(declare-fun x2_ack!527 () (_ BitVec 64))
(declare-fun b_ack!531 () (_ BitVec 64))
(declare-fun a_ack!530 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!528 () (_ BitVec 64))
(declare-fun y1_ack!529 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!532) ((_ to_fp 11 53) x1_ack!526)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!526) ((_ to_fp 11 53) x2_ack!527)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!526)
                       ((_ to_fp 11 53) x0_ack!532))
               ((_ to_fp 11 53) x0_ack!532))
       ((_ to_fp 11 53) x1_ack!526)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!526)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!526)
                       ((_ to_fp 11 53) x0_ack!532)))
       ((_ to_fp 11 53) x0_ack!532)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!527)
                       ((_ to_fp 11 53) x1_ack!526))
               ((_ to_fp 11 53) x1_ack!526))
       ((_ to_fp 11 53) x2_ack!527)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!527)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!527)
                       ((_ to_fp 11 53) x1_ack!526)))
       ((_ to_fp 11 53) x1_ack!526)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!526)
                    ((_ to_fp 11 53) x0_ack!532))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!527)
                    ((_ to_fp 11 53) x1_ack!526))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!530) ((_ to_fp 11 53) b_ack!531))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!530) ((_ to_fp 11 53) x0_ack!532))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!531) ((_ to_fp 11 53) x2_ack!527))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!530) ((_ to_fp 11 53) b_ack!531))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!530) ((_ to_fp 11 53) x0_ack!532))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!530) ((_ to_fp 11 53) x1_ack!526))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!531) ((_ to_fp 11 53) x0_ack!532))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!531) ((_ to_fp 11 53) x1_ack!526)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!526) ((_ to_fp 11 53) b_ack!531))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!526)
                    ((_ to_fp 11 53) x0_ack!532))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FDIV_ACCURACY
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) y1_ack!529)
          ((_ to_fp 11 53) y0_ack!528))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x1_ack!526)
          ((_ to_fp 11 53) x0_ack!532))))

(check-sat)
(exit)
