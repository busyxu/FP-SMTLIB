(declare-fun c_ack!353 () (_ BitVec 64))
(declare-fun b_ack!352 () (_ BitVec 32))
(declare-fun a_ack!354 () (_ BitVec 32))
(declare-fun CF_log ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_exp ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!353) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!353) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!353) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvsle #x00000001 b_ack!352)))
(assert (not (= #xffffffff (bvsub a_ack!354 b_ack!352))))
(assert (not (= #xfffffffe (bvsub a_ack!354 b_ack!352))))
(assert (= (bvsub #x00000002 b_ack!352) (bvadd #x00000002 (bvsub a_ack!354 b_ack!352))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvsub #xffffffff (bvsub a_ack!354 b_ack!352)))
                   (CF_log c_ack!353))))
  (not (fp.gt a!1 ((_ to_fp 11 53) #x41dfffffff800000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvsub #xffffffff (bvsub a_ack!354 b_ack!352)))
                   (CF_log c_ack!353))))
  (not (fp.lt a!1 ((_ to_fp 11 53) #xc1dfffffffc00000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvsub #xffffffff (bvsub a_ack!354 b_ack!352)))
                   (CF_log c_ack!353))))
  (not (fp.gt a!1 ((_ to_fp 11 53) #x40862e42fefa39ef)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvsub #xffffffff (bvsub a_ack!354 b_ack!352)))
                   (CF_log c_ack!353))))
  (not (fp.lt a!1 ((_ to_fp 11 53) #xc086232bdd7abcd2)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvsub #xffffffff (bvsub a_ack!354 b_ack!352)))
                   (CF_log c_ack!353))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.add roundNearestTiesToEven
                                   (fp.abs a!1)
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   ((_ to_fp 11 53) #x3cb0000000000000)))
      (a!3 (fp.abs (CF_exp (fp.sub roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x0000000000000000))))))
  (FPCHECK_FMUL_OVERFLOW a!2 a!3))))

(check-sat)
(exit)
