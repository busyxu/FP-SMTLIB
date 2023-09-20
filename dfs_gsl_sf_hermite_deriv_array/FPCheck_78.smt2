(declare-fun b_ack!582 () (_ BitVec 32))
(declare-fun a_ack!584 () (_ BitVec 32))
(declare-fun c_ack!583 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (bvslt b_ack!582 #x00000000)))
(assert (not (bvslt a_ack!584 #x00000000)))
(assert (not (= #x00000000 b_ack!582)))
(assert (not (= #x00000001 b_ack!582)))
(assert (= #x00000000 a_ack!584))
(assert (not (bvslt b_ack!582 #x00000000)))
(assert (not (= #x00000000 b_ack!582)))
(assert (not (= #x00000001 b_ack!582)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!583) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt (fp.abs (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) #x4000000000000000)
                       ((_ to_fp 11 53) c_ack!583)))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.abs ((_ to_fp 11 53) c_ack!583)))
                   ((_ to_fp 11 53) #x4000000000000000))))
  (fp.eq a!1 (fp.abs ((_ to_fp 11 53) c_ack!583)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.abs ((_ to_fp 11 53) c_ack!583)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.abs ((_ to_fp 11 53) c_ack!583)))
                   (fp.abs ((_ to_fp 11 53) c_ack!583)))))
  (fp.eq a!1 ((_ to_fp 11 53) #x4000000000000000))))
(assert (bvsle #x00000001 (bvadd #xffffffff b_ack!582)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x7feccccccccccccc)
                   (fp.abs (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) c_ack!583))))))
(let ((a!2 (fp.gt (fp.abs (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x4000000000000000)
                                  ((_ to_fp 11 53) c_ack!583)))
                  a!1)))
  (not a!2))))
(assert (FPCHECK_FSUB_ACCURACY
  (fp.mul roundNearestTiesToEven
          (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) #x4000000000000000)
                  ((_ to_fp 11 53) c_ack!583))
          (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) #x4000000000000000)
                  ((_ to_fp 11 53) c_ack!583)))
  #x4000000000000000))

(check-sat)
(exit)
