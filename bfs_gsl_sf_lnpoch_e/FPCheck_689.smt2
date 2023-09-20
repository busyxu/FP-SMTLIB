(declare-fun a_ack!2215 () (_ BitVec 64))
(declare-fun b_ack!2214 () (_ BitVec 64))
(declare-fun CF_log ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!2215) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq (fp.add roundNearestTiesToEven
                     ((_ to_fp 11 53) a_ack!2215)
                     ((_ to_fp 11 53) b_ack!2214))
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!2214) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!2214))
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fb999999999999a)
                    ((_ to_fp 11 53) a_ack!2215)))))
(assert (fp.gt ((_ to_fp 11 53) a_ack!2215) ((_ to_fp 11 53) #x4000000000000000)))
(assert (let ((a!1 (fp.eq (fp.abs (fp.abs ((_ to_fp 11 53) b_ack!2214)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) b_ack!2214))
                           (CF_log a_ack!2215))
                   (fp.abs ((_ to_fp 11 53) b_ack!2214)))))
  (fp.eq a!1 (CF_log a_ack!2215))))
(assert (not (fp.eq (fp.abs (CF_log a_ack!2215)) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) b_ack!2214))
                           (CF_log a_ack!2215))
                   (CF_log a_ack!2215))))
  (fp.eq a!1 (fp.abs ((_ to_fp 11 53) b_ack!2214)))))
(assert (let ((a!1 (fp.gt (fp.mul roundNearestTiesToEven
                          (fp.abs ((_ to_fp 11 53) b_ack!2214))
                          (CF_log a_ack!2215))
                  ((_ to_fp 11 53) #x3fb999999999999a))))
  (not a!1)))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!2214))
       (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) #x3fb999999999999a)
               ((_ to_fp 11 53) a_ack!2215))))
(assert (fp.gt ((_ to_fp 11 53) a_ack!2215) ((_ to_fp 11 53) #x402e000000000000)))
(assert (fp.geq (fp.abs ((_ to_fp 11 53) b_ack!2214))
        (fp.mul roundNearestTiesToEven
                (fp.abs ((_ to_fp 11 53) a_ack!2215))
                ((_ to_fp 11 53) #x0010000000000000))))
(assert (FPCHECK_FADD_UNDERFLOW
  #x3ff0000000000000
  (fp.div roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!2214)
          ((_ to_fp 11 53) a_ack!2215))))

(check-sat)
(exit)
