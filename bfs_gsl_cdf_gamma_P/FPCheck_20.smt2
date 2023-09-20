(declare-fun b_ack!153 () (_ BitVec 64))
(declare-fun x_ack!154 () (_ BitVec 64))
(declare-fun a_ack!152 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (and (fp.eq ((_ to_fp 11 53) x_ack!154)
                 ((_ to_fp 11 53) #x0000000000000000))
          (fp.eq ((_ to_fp 11 53) b_ack!153)
                 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (not (fp.leq ((_ to_fp 11 53) x_ack!154) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!154)
                    ((_ to_fp 11 53) b_ack!153))
            ((_ to_fp 11 53) a_ack!152))))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!152) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!154)
                    ((_ to_fp 11 53) b_ack!153))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!154)
                    ((_ to_fp 11 53) b_ack!153))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!154)
                    ((_ to_fp 11 53) b_ack!153))
            ((_ to_fp 11 53) #x4034000000000000))))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!154)
                    ((_ to_fp 11 53) b_ack!153))
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fe0000000000000)
                    ((_ to_fp 11 53) a_ack!152)))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!152) ((_ to_fp 11 53) #x412e848000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!152)
             (fp.div roundNearestTiesToEven
                     ((_ to_fp 11 53) x_ack!154)
                     ((_ to_fp 11 53) b_ack!153)))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!154)
                           ((_ to_fp 11 53) b_ack!153))
                   ((_ to_fp 11 53) a_ack!152))))
  (FPCHECK_FMUL_UNDERFLOW a!1 a!1)))

(check-sat)
(exit)
