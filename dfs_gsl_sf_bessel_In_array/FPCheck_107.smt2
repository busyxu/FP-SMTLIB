(declare-fun c_ack!469 () (_ BitVec 64))
(declare-fun a_ack!470 () (_ BitVec 32))
(declare-fun b_ack!468 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) c_ack!469))
            ((_ to_fp 11 53) #x40862642fefa39ef))))
(assert (not (bvslt b_ack!468 a_ack!470)))
(assert (not (bvslt a_ack!470 #x00000000)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!469) ((_ to_fp 11 53) #x0000000000000000))))
(assert (= #x00000000 b_ack!468))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) c_ack!469))
            ((_ to_fp 11 53) #x3e60000000000000))))
(assert (fp.leq (fp.abs ((_ to_fp 11 53) c_ack!469))
        ((_ to_fp 11 53) #x4008000000000000)))
(assert (let ((a!1 (fp.eq (fp.abs (fp.abs ((_ to_fp 11 53) c_ack!469)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) c_ack!469))
                           (fp.abs ((_ to_fp 11 53) c_ack!469)))
                   (fp.abs ((_ to_fp 11 53) c_ack!469)))))
  (fp.eq a!1 (fp.abs ((_ to_fp 11 53) c_ack!469)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.abs ((_ to_fp 11 53) c_ack!469)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) c_ack!469))
                           (fp.abs ((_ to_fp 11 53) c_ack!469)))
                   (fp.abs ((_ to_fp 11 53) c_ack!469)))))
  (fp.eq a!1 (fp.abs ((_ to_fp 11 53) c_ack!469)))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) c_ack!469))
                           (fp.abs ((_ to_fp 11 53) c_ack!469)))
                   ((_ to_fp 11 53) #x4012000000000000))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) #x3ff0000000000000))
                 ((_ to_fp 11 53) #x3ff0000000000000))
         a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) c_ack!469))
                           (fp.abs ((_ to_fp 11 53) c_ack!469)))
                   ((_ to_fp 11 53) #x4012000000000000))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 a!1
                 (fp.sub roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) #x3ff0000000000000)))
         ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) c_ack!469))
                           (fp.abs ((_ to_fp 11 53) c_ack!469)))
                   ((_ to_fp 11 53) #x4012000000000000))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.sub roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   ((_ to_fp 11 53) #xbff0000000000000))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x4000000000000000)))))
  (FPCHECK_FMUL_OVERFLOW a!3 #x0000000000000000)))))

(check-sat)
(exit)
