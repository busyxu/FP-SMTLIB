(declare-fun c_ack!6847 () (_ BitVec 64))
(declare-fun a_ack!6848 () (_ BitVec 32))
(declare-fun b_ack!6846 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!6847) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (bvslt a_ack!6848 #xffffffff)))
(assert (not (= #xffffffff a_ack!6848)))
(assert (= #x00000000 a_ack!6848))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!6847) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!6847) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!6846) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!6847) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) c_ack!6847) ((_ to_fp 11 53) #x3fb999999999999a)))
(assert (fp.lt ((_ to_fp 11 53) b_ack!6846) ((_ to_fp 11 53) #x4031000000000000)))
(assert (let ((a!1 (fp.geq (fp.abs (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!6847)
                                   ((_ to_fp 11 53) c_ack!6847)))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
  (not a!1)))
(assert (fp.lt (fp.abs (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) c_ack!6847)
                       ((_ to_fp 11 53) c_ack!6847)))
       ((_ to_fp 11 53) #x3fd0000000000000)))
(assert (let ((a!1 (fp.lt (fp.abs (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x3fe0000000000000)
                                  ((_ to_fp 11 53) b_ack!6846)))
                  ((_ to_fp 11 53) #x4034000000000000))))
  (not a!1)))
(assert (fp.gt (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) c_ack!6847)
               ((_ to_fp 11 53) c_ack!6847))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (FPCHECK_FMUL_UNDERFLOW
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x3fe0000000000000)
          ((_ to_fp 11 53) b_ack!6846))
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x3fe0000000000000)
          ((_ to_fp 11 53) b_ack!6846))))

(check-sat)
(exit)
