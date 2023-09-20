(declare-fun b_ack!159 () (_ BitVec 64))
(declare-fun x_ack!160 () (_ BitVec 64))
(declare-fun a_ack!158 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (and (fp.eq ((_ to_fp 11 53) x_ack!160)
                 ((_ to_fp 11 53) #x0000000000000000))
          (fp.eq ((_ to_fp 11 53) b_ack!159)
                 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (not (fp.leq ((_ to_fp 11 53) x_ack!160) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!160)
                    ((_ to_fp 11 53) b_ack!159))
            ((_ to_fp 11 53) a_ack!158))))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!158) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!160)
                    ((_ to_fp 11 53) b_ack!159))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!160)
                    ((_ to_fp 11 53) b_ack!159))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!160)
                    ((_ to_fp 11 53) b_ack!159))
            ((_ to_fp 11 53) #x4034000000000000))))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!160)
                    ((_ to_fp 11 53) b_ack!159))
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fe0000000000000)
                    ((_ to_fp 11 53) a_ack!158)))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!158) ((_ to_fp 11 53) #x412e848000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!158)
             (fp.div roundNearestTiesToEven
                     ((_ to_fp 11 53) x_ack!160)
                     ((_ to_fp 11 53) b_ack!159)))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!160)
                           ((_ to_fp 11 53) b_ack!159))
                   ((_ to_fp 11 53) a_ack!158))))
  (FPCHECK_FMUL_ACCURACY a!1 a!1)))

(check-sat)
(exit)
