(declare-fun b_ack!2245 () (_ BitVec 32))
(declare-fun a_ack!2247 () (_ BitVec 32))
(declare-fun c_ack!2246 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (not (bvslt b_ack!2245 #x00000000)))
(assert (not (bvslt a_ack!2247 #x00000000)))
(assert (not (= #x00000000 b_ack!2245)))
(assert (not (= #x00000001 b_ack!2245)))
(assert (not (= #x00000000 a_ack!2247)))
(assert (= #x00000001 a_ack!2247))
(assert (not (bvslt b_ack!2245 #x00000000)))
(assert (not (= #x00000000 b_ack!2245)))
(assert (not (= #x00000001 b_ack!2245)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!2246) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) c_ack!2246))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (bvslt #x00000001 b_ack!2245))
(assert (let ((a!1 (fp.gt (fp.abs ((_ to_fp 11 53) c_ack!2246))
                  (fp.div roundNearestTiesToEven
                          ((_ to_fp 11 53) #x7feccccccccccccc)
                          (fp.abs ((_ to_fp 11 53) c_ack!2246))))))
  (not a!1)))
(assert (bvslt #x00000002 b_ack!2245))
(assert (let ((a!1 (fp.abs (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!2246)
                                   ((_ to_fp 11 53) c_ack!2246))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (fp.gt a!1
         (fp.div roundNearestTiesToEven
                 ((_ to_fp 11 53) #x7feccccccccccccc)
                 (fp.abs ((_ to_fp 11 53) c_ack!2246))))))
(assert (let ((a!1 (fp.abs (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!2246)
                                   ((_ to_fp 11 53) c_ack!2246))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (FPCHECK_FMUL_UNDERFLOW a!1 #x3cb0000000000000)))

(check-sat)
(exit)
