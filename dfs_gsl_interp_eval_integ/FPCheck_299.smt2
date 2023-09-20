(declare-fun x1_ack!3610 () (_ BitVec 64))
(declare-fun x0_ack!3614 () (_ BitVec 64))
(declare-fun x2_ack!3611 () (_ BitVec 64))
(declare-fun b_ack!3613 () (_ BitVec 64))
(declare-fun a_ack!3612 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!3614) ((_ to_fp 11 53) x1_ack!3610)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!3610) ((_ to_fp 11 53) x2_ack!3611)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3610)
                       ((_ to_fp 11 53) x0_ack!3614))
               ((_ to_fp 11 53) x0_ack!3614))
       ((_ to_fp 11 53) x1_ack!3610)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!3610)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3610)
                       ((_ to_fp 11 53) x0_ack!3614)))
       ((_ to_fp 11 53) x0_ack!3614)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3611)
                       ((_ to_fp 11 53) x1_ack!3610))
               ((_ to_fp 11 53) x1_ack!3610))
       ((_ to_fp 11 53) x2_ack!3611)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!3611)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3611)
                       ((_ to_fp 11 53) x1_ack!3610)))
       ((_ to_fp 11 53) x1_ack!3610)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!3610)
                    ((_ to_fp 11 53) x0_ack!3614))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!3611)
                    ((_ to_fp 11 53) x1_ack!3610))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!3612) ((_ to_fp 11 53) b_ack!3613))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3612) ((_ to_fp 11 53) x0_ack!3614))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!3613) ((_ to_fp 11 53) x2_ack!3611))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!3612) ((_ to_fp 11 53) b_ack!3613))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3612) ((_ to_fp 11 53) x0_ack!3614))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!3612) ((_ to_fp 11 53) x1_ack!3610))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!3613) ((_ to_fp 11 53) x0_ack!3614))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!3613) ((_ to_fp 11 53) x1_ack!3610))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!3610)
                    ((_ to_fp 11 53) x0_ack!3614))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FADD_ACCURACY
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!3612)
          ((_ to_fp 11 53) x0_ack!3614))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!3613)
          ((_ to_fp 11 53) x0_ack!3614))))

(check-sat)
(exit)
