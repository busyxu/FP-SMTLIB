(declare-fun x1_ack!6019 () (_ BitVec 64))
(declare-fun x0_ack!6023 () (_ BitVec 64))
(declare-fun x2_ack!6020 () (_ BitVec 64))
(declare-fun b_ack!6022 () (_ BitVec 64))
(declare-fun a_ack!6021 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!6023) ((_ to_fp 11 53) x1_ack!6019)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!6019) ((_ to_fp 11 53) x2_ack!6020)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6019)
                       ((_ to_fp 11 53) x0_ack!6023))
               ((_ to_fp 11 53) x0_ack!6023))
       ((_ to_fp 11 53) x1_ack!6019)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!6019)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6019)
                       ((_ to_fp 11 53) x0_ack!6023)))
       ((_ to_fp 11 53) x0_ack!6023)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6020)
                       ((_ to_fp 11 53) x1_ack!6019))
               ((_ to_fp 11 53) x1_ack!6019))
       ((_ to_fp 11 53) x2_ack!6020)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!6020)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6020)
                       ((_ to_fp 11 53) x1_ack!6019)))
       ((_ to_fp 11 53) x1_ack!6019)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!6019)
                    ((_ to_fp 11 53) x0_ack!6023))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!6020)
                    ((_ to_fp 11 53) x1_ack!6019))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!6021) ((_ to_fp 11 53) b_ack!6022))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6021) ((_ to_fp 11 53) x0_ack!6023))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!6022) ((_ to_fp 11 53) x2_ack!6020))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!6021) ((_ to_fp 11 53) b_ack!6022))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6021) ((_ to_fp 11 53) x0_ack!6023))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!6021) ((_ to_fp 11 53) x1_ack!6019))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!6022) ((_ to_fp 11 53) x0_ack!6023))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!6022) ((_ to_fp 11 53) x1_ack!6019)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!6019) ((_ to_fp 11 53) b_ack!6022))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!6019)
                    ((_ to_fp 11 53) x0_ack!6023))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!6021)
                                   ((_ to_fp 11 53) x0_ack!6023))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!6021)
                                   ((_ to_fp 11 53) x0_ack!6023)))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!6019)
                                   ((_ to_fp 11 53) x0_ack!6023))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!6019)
                                   ((_ to_fp 11 53) x0_ack!6023))))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   a!1
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!6021)
                                   ((_ to_fp 11 53) x0_ack!6023))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!6019)
                                   ((_ to_fp 11 53) x0_ack!6023))))))
  (FPCHECK_FMUL_UNDERFLOW #x0000000000000000 a!2))))

(check-sat)
(exit)
