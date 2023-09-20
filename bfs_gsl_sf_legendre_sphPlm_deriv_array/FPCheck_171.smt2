(declare-fun b_ack!864 () (_ BitVec 32))
(declare-fun a_ack!866 () (_ BitVec 32))
(declare-fun c_ack!865 () (_ BitVec 64))
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt b_ack!864 #x00000000)))
(assert (not (bvslt a_ack!866 b_ack!864)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!865) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!865) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (= #x00000000 b_ack!864)))
(assert (= #x00000001 b_ack!864))
(assert (not (bvslt b_ack!864 #x00000000)))
(assert (not (bvslt a_ack!866 b_ack!864)))
(assert (not (= #x00000000 b_ack!864)))
(assert (not (fp.eq ((_ to_fp 11 53) roundNearestTiesToEven (bvsub a_ack!866 b_ack!864))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.abs (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub a_ack!866 b_ack!864))))))
  (not (fp.eq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (CF_log ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub a_ack!866 b_ack!864)))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub a_ack!866 b_ack!864)))
                   a!1)))
(let ((a!3 (fp.div roundNearestTiesToEven
                   a!2
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub a_ack!866 b_ack!864))))))
  (fp.eq a!3 a!1)))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (CF_log ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub a_ack!866 b_ack!864)))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
  (not (fp.eq (fp.abs a!1) ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (CF_log ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub a_ack!866 b_ack!864)))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub a_ack!866 b_ack!864)))
                   a!1)))
  (fp.eq (fp.div roundNearestTiesToEven a!2 a!1)
         (fp.mul roundNearestTiesToEven
                 ((_ to_fp 11 53) #x3fe0000000000000)
                 ((_ to_fp 11 53)
                   roundNearestTiesToEven
                   (bvsub a_ack!866 b_ack!864)))))))
(assert (not (fp.eq ((_ to_fp 11 53) roundNearestTiesToEven (bvsub a_ack!866 b_ack!864))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_UNDERFLOW
  #x4000000000000000
  ((_ to_fp 11 53) roundNearestTiesToEven a_ack!866)))

(check-sat)
(exit)
