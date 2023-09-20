(declare-fun c_ack!368 () (_ BitVec 64))
(declare-fun b_ack!367 () (_ BitVec 32))
(declare-fun a_ack!369 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_exp ((_ BitVec 64)) (_ FloatingPoint 11 53))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!368) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= a_ack!369 b_ack!367)))
(assert (not (= #x00000000 b_ack!367)))
(assert (not (= #x00000000 a_ack!369)))
(assert (not (bvslt b_ack!367 #x00000000)))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!368) ((_ to_fp 11 53) #x4059000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!368) ((_ to_fp 11 53) #xc059000000000000))))
(assert (not (bvslt a_ack!369 #x00000000)))
(assert (not (bvslt a_ack!369 #x00000000)))
(assert (not (= a_ack!369 b_ack!367)))
(assert (not (= #x00000001 a_ack!369)))
(assert (not (= b_ack!367 (bvadd #x00000001 a_ack!369))))
(assert (not (= a_ack!369 (bvadd #x00000001 b_ack!367))))
(assert (not (= a_ack!369 (bvadd #x00000002 b_ack!367))))
(assert (not (= b_ack!367 (bvmul #x00000002 a_ack!369))))
(assert (bvslt b_ack!367 #x0000000a))
(assert (bvslt a_ack!369 #x0000000a))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) c_ack!368))
            ((_ to_fp 11 53) #x4014000000000000))))
(assert (let ((a!1 (fp.gt ((_ to_fp 11 53) roundNearestTiesToEven b_ack!367)
                  (fp.mul roundNearestTiesToEven
                          ((_ to_fp 11 53) roundNearestTiesToEven a_ack!369)
                          (fp.abs ((_ to_fp 11 53) c_ack!368))))))
  (not a!1)))
(assert (not (bvslt a_ack!369 b_ack!367)))
(assert (not (bvslt a_ack!369 b_ack!367)))
(assert (not (bvslt a_ack!369 b_ack!367)))
(assert (not (fp.geq ((_ to_fp 11 53) c_ack!368) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.leq ((_ to_fp 11 53) roundNearestTiesToEven a_ack!369)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     b_ack!367)
                                   ((_ to_fp 11 53) c_ack!368))))))
  (not a!1)))
(assert (fp.geq ((_ to_fp 11 53) roundNearestTiesToEven a_ack!369)
        (fp.sub roundNearestTiesToEven
                ((_ to_fp 11 53) #x8000000000000000)
                ((_ to_fp 11 53) c_ack!368))))
(assert (bvslt b_ack!367 (bvadd #xffffffff a_ack!369)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvsub #x00000001 a_ack!369))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000002 a_ack!369))
                           ((_ to_fp 11 53) c_ack!368))))
      (a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!368)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!369)
                                   ((_ to_fp 11 53) #x3ff0000000000000))))))
  (FPCHECK_FMUL_OVERFLOW
    a!1
    (fp.mul roundNearestTiesToEven (CF_exp c_ack!368) a!2))))

(check-sat)
(exit)
