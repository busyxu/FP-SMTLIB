(declare-fun c_ack!998 () (_ BitVec 64))
(declare-fun b_ack!997 () (_ BitVec 64))
(declare-fun a_ack!999 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_INVALID
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!997))
       (fp.abs ((_ to_fp 11 53) c_ack!998))))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!999))
       (fp.abs ((_ to_fp 11 53) b_ack!997))))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) a_ack!999))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!999))
                           (fp.abs ((_ to_fp 11 53) a_ack!999)))
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!999))
                           (fp.abs ((_ to_fp 11 53) a_ack!999)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) b_ack!997))
                           (fp.abs ((_ to_fp 11 53) a_ack!999)))
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) b_ack!997))
                           (fp.abs ((_ to_fp 11 53) a_ack!999))))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven a!1 a!2)
                 a!1)
         a!2)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!999))
                           (fp.abs ((_ to_fp 11 53) a_ack!999)))
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!999))
                           (fp.abs ((_ to_fp 11 53) a_ack!999)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) b_ack!997))
                           (fp.abs ((_ to_fp 11 53) a_ack!999)))
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) b_ack!997))
                           (fp.abs ((_ to_fp 11 53) a_ack!999))))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven a!1 a!2)
                 a!2)
         a!1)))
(assert (FPCHECK_FDIV_INVALID
  (fp.abs ((_ to_fp 11 53) c_ack!998))
  (fp.abs ((_ to_fp 11 53) a_ack!999))))

(check-sat)
(exit)
