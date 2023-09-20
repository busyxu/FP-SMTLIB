(declare-fun x1_ack!7320 () (_ BitVec 64))
(declare-fun x0_ack!7326 () (_ BitVec 64))
(declare-fun x2_ack!7321 () (_ BitVec 64))
(declare-fun b_ack!7325 () (_ BitVec 64))
(declare-fun a_ack!7324 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!7322 () (_ BitVec 64))
(declare-fun y1_ack!7323 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!7326) ((_ to_fp 11 53) x1_ack!7320)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!7320) ((_ to_fp 11 53) x2_ack!7321)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7320)
                       ((_ to_fp 11 53) x0_ack!7326))
               ((_ to_fp 11 53) x0_ack!7326))
       ((_ to_fp 11 53) x1_ack!7320)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!7320)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7320)
                       ((_ to_fp 11 53) x0_ack!7326)))
       ((_ to_fp 11 53) x0_ack!7326)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7321)
                       ((_ to_fp 11 53) x1_ack!7320))
               ((_ to_fp 11 53) x1_ack!7320))
       ((_ to_fp 11 53) x2_ack!7321)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!7321)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7321)
                       ((_ to_fp 11 53) x1_ack!7320)))
       ((_ to_fp 11 53) x1_ack!7320)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!7320)
                    ((_ to_fp 11 53) x0_ack!7326))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!7321)
                    ((_ to_fp 11 53) x1_ack!7320))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!7324) ((_ to_fp 11 53) b_ack!7325))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7324) ((_ to_fp 11 53) x0_ack!7326))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!7325) ((_ to_fp 11 53) x2_ack!7321))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!7324) ((_ to_fp 11 53) b_ack!7325))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7324) ((_ to_fp 11 53) x0_ack!7326))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!7324) ((_ to_fp 11 53) x1_ack!7320))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!7325) ((_ to_fp 11 53) x0_ack!7326)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!7320)
                    ((_ to_fp 11 53) x0_ack!7326))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FDIV_OVERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) y1_ack!7323)
          ((_ to_fp 11 53) y0_ack!7322))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x1_ack!7320)
          ((_ to_fp 11 53) x0_ack!7326))))

(check-sat)
(exit)
