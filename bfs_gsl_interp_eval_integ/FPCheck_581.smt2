(declare-fun x1_ack!7327 () (_ BitVec 64))
(declare-fun x0_ack!7331 () (_ BitVec 64))
(declare-fun x2_ack!7328 () (_ BitVec 64))
(declare-fun b_ack!7330 () (_ BitVec 64))
(declare-fun a_ack!7329 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!7331) ((_ to_fp 11 53) x1_ack!7327)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!7327) ((_ to_fp 11 53) x2_ack!7328)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7327)
                       ((_ to_fp 11 53) x0_ack!7331))
               ((_ to_fp 11 53) x0_ack!7331))
       ((_ to_fp 11 53) x1_ack!7327)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!7327)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7327)
                       ((_ to_fp 11 53) x0_ack!7331)))
       ((_ to_fp 11 53) x0_ack!7331)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7328)
                       ((_ to_fp 11 53) x1_ack!7327))
               ((_ to_fp 11 53) x1_ack!7327))
       ((_ to_fp 11 53) x2_ack!7328)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!7328)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7328)
                       ((_ to_fp 11 53) x1_ack!7327)))
       ((_ to_fp 11 53) x1_ack!7327)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!7327)
                    ((_ to_fp 11 53) x0_ack!7331))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!7328)
                    ((_ to_fp 11 53) x1_ack!7327))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!7329) ((_ to_fp 11 53) b_ack!7330))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7329) ((_ to_fp 11 53) x0_ack!7331))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!7330) ((_ to_fp 11 53) x2_ack!7328))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!7329) ((_ to_fp 11 53) b_ack!7330))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7329) ((_ to_fp 11 53) x0_ack!7331))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!7329) ((_ to_fp 11 53) x1_ack!7327))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!7330) ((_ to_fp 11 53) x0_ack!7331))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!7330) ((_ to_fp 11 53) x1_ack!7327)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!7327) ((_ to_fp 11 53) b_ack!7330))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!7327)
                    ((_ to_fp 11 53) x0_ack!7331))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!7328)
                    ((_ to_fp 11 53) x1_ack!7327))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FADD_UNDERFLOW
  (fp.mul roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x1_ack!7327)
                  ((_ to_fp 11 53) x1_ack!7327))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x1_ack!7327)
                  ((_ to_fp 11 53) x1_ack!7327)))
  (fp.mul roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) b_ack!7330)
                  ((_ to_fp 11 53) x1_ack!7327))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) b_ack!7330)
                  ((_ to_fp 11 53) x1_ack!7327)))))

(check-sat)
(exit)
