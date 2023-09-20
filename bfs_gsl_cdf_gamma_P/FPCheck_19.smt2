(declare-fun b_ack!147 () (_ BitVec 64))
(declare-fun x_ack!148 () (_ BitVec 64))
(declare-fun a_ack!146 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (and (fp.eq ((_ to_fp 11 53) x_ack!148)
                 ((_ to_fp 11 53) #x0000000000000000))
          (fp.eq ((_ to_fp 11 53) b_ack!147)
                 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (not (fp.leq ((_ to_fp 11 53) x_ack!148) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!148)
                    ((_ to_fp 11 53) b_ack!147))
            ((_ to_fp 11 53) a_ack!146))))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!146) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!148)
                    ((_ to_fp 11 53) b_ack!147))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!148)
                    ((_ to_fp 11 53) b_ack!147))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!148)
                    ((_ to_fp 11 53) b_ack!147))
            ((_ to_fp 11 53) #x4034000000000000))))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!148)
                    ((_ to_fp 11 53) b_ack!147))
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fe0000000000000)
                    ((_ to_fp 11 53) a_ack!146)))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!146) ((_ to_fp 11 53) #x412e848000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!146)
             (fp.div roundNearestTiesToEven
                     ((_ to_fp 11 53) x_ack!148)
                     ((_ to_fp 11 53) b_ack!147)))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!148)
                           ((_ to_fp 11 53) b_ack!147))
                   ((_ to_fp 11 53) a_ack!146))))
  (FPCHECK_FMUL_OVERFLOW a!1 a!1)))

(check-sat)
(exit)
