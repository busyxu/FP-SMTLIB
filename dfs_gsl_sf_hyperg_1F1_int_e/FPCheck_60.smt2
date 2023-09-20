(declare-fun c_ack!302 () (_ BitVec 64))
(declare-fun b_ack!301 () (_ BitVec 32))
(declare-fun a_ack!303 () (_ BitVec 32))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!302) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= a_ack!303 b_ack!301)))
(assert (not (= #x00000000 b_ack!301)))
(assert (not (= #x00000000 a_ack!303)))
(assert (not (bvslt b_ack!301 #x00000000)))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!302) ((_ to_fp 11 53) #x4059000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!302) ((_ to_fp 11 53) #xc059000000000000))))
(assert (not (bvslt a_ack!303 #x00000000)))
(assert (not (bvslt a_ack!303 #x00000000)))
(assert (not (= a_ack!303 b_ack!301)))
(assert (not (= #x00000001 a_ack!303)))
(assert (not (= b_ack!301 (bvadd #x00000001 a_ack!303))))
(assert (not (= a_ack!303 (bvadd #x00000001 b_ack!301))))
(assert (not (= a_ack!303 (bvadd #x00000002 b_ack!301))))
(assert (not (= b_ack!301 (bvmul #x00000002 a_ack!303))))
(assert (bvslt b_ack!301 #x0000000a))
(assert (bvslt a_ack!303 #x0000000a))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) c_ack!302))
            ((_ to_fp 11 53) #x4014000000000000))))
(assert (let ((a!1 (fp.gt ((_ to_fp 11 53) roundNearestTiesToEven b_ack!301)
                  (fp.mul roundNearestTiesToEven
                          ((_ to_fp 11 53) roundNearestTiesToEven a_ack!303)
                          (fp.abs ((_ to_fp 11 53) c_ack!302))))))
  (not a!1)))
(assert (not (bvslt a_ack!303 b_ack!301)))
(assert (not (bvslt a_ack!303 b_ack!301)))
(assert (not (bvslt a_ack!303 b_ack!301)))
(assert (not (fp.geq ((_ to_fp 11 53) c_ack!302) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.leq ((_ to_fp 11 53) roundNearestTiesToEven a_ack!303)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     b_ack!301)
                                   ((_ to_fp 11 53) c_ack!302))))))
  (not a!1)))
(assert (fp.geq ((_ to_fp 11 53) roundNearestTiesToEven a_ack!303)
        (fp.sub roundNearestTiesToEven
                ((_ to_fp 11 53) #x8000000000000000)
                ((_ to_fp 11 53) c_ack!302))))
(assert (FPCHECK_FADD_UNDERFLOW
  #x3ff0000000000000
  (fp.div roundNearestTiesToEven
          ((_ to_fp 11 53) c_ack!302)
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) roundNearestTiesToEven a_ack!303)
                  ((_ to_fp 11 53) #x3ff0000000000000)))))

(check-sat)
(exit)
