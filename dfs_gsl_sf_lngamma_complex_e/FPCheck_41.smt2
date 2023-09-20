(declare-fun a_ack!127 () (_ BitVec 64))
(declare-fun b_ack!126 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!127) ((_ to_fp 11 53) #x3fe0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!127)
                       ((_ to_fp 11 53) #x3ff0000000000000))
               ((_ to_fp 11 53) #x3ff0000000000000))
       ((_ to_fp 11 53) a_ack!127)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) a_ack!127)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!127)
                       ((_ to_fp 11 53) #x3ff0000000000000)))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!127)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x40852429b6c30b05)
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven a!1 a!1)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!126)
                                   ((_ to_fp 11 53) b_ack!126))))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3feffffffffff950)
                         (fp.mul roundNearestTiesToEven a!2 a!1))
                 ((_ to_fp 11 53) #x3feffffffffff950))
         (fp.mul roundNearestTiesToEven a!2 a!1)))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!127)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x40852429b6c30b05)
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven a!1 a!1)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!126)
                                   ((_ to_fp 11 53) b_ack!126))))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3feffffffffff950)
                         (fp.mul roundNearestTiesToEven a!2 a!1))
                 (fp.mul roundNearestTiesToEven a!2 a!1))
         ((_ to_fp 11 53) #x3feffffffffff950)))))
(assert (FPCHECK_FMUL_UNDERFLOW b_ack!126 b_ack!126))

(check-sat)
(exit)
