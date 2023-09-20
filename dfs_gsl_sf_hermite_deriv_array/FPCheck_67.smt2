(declare-fun b_ack!522 () (_ BitVec 32))
(declare-fun a_ack!524 () (_ BitVec 32))
(declare-fun c_ack!523 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (bvslt b_ack!522 #x00000000)))
(assert (not (bvslt a_ack!524 #x00000000)))
(assert (not (= #x00000000 b_ack!522)))
(assert (not (= #x00000001 b_ack!522)))
(assert (= #x00000000 a_ack!524))
(assert (not (bvslt b_ack!522 #x00000000)))
(assert (not (= #x00000000 b_ack!522)))
(assert (not (= #x00000001 b_ack!522)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!523) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt (fp.abs (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) #x4000000000000000)
                       ((_ to_fp 11 53) c_ack!523)))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.abs ((_ to_fp 11 53) c_ack!523)))
                   ((_ to_fp 11 53) #x4000000000000000))))
  (fp.eq a!1 (fp.abs ((_ to_fp 11 53) c_ack!523)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.abs ((_ to_fp 11 53) c_ack!523)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.abs ((_ to_fp 11 53) c_ack!523)))
                   (fp.abs ((_ to_fp 11 53) c_ack!523)))))
  (fp.eq a!1 ((_ to_fp 11 53) #x4000000000000000))))
(assert (bvsle #x00000001 (bvadd #xffffffff b_ack!522)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x7feccccccccccccc)
                   (fp.abs (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) c_ack!523))))))
  (fp.gt (fp.abs (fp.mul roundNearestTiesToEven
                         ((_ to_fp 11 53) #x4000000000000000)
                         ((_ to_fp 11 53) c_ack!523)))
         a!1)))
(assert (FPCHECK_FMUL_OVERFLOW
  (fp.abs (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) #x4000000000000000)
                  ((_ to_fp 11 53) c_ack!523)))
  #x3cb0000000000000))

(check-sat)
(exit)
