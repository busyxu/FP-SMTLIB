(declare-fun a_ack!753 () (_ BitVec 32))
(declare-fun b_ack!752 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt a_ack!753 #x00000000)))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!752) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #x00000000 a_ack!753)))
(assert (not (= #x00000001 a_ack!753)))
(assert (not (= #x00000002 a_ack!753)))
(assert (fp.lt ((_ to_fp 11 53) b_ack!752) ((_ to_fp 11 53) #x4008000000000000)))
(assert (not (bvslt (bvadd #x00000001 a_ack!753) #x00000000)))
(assert (not (= #x00000000 (bvand (bvadd #x00000001 a_ack!753) #x00000001))))
(assert (let ((a!1 (ite (= ((_ extract 31 31) (bvadd #x00000001 a_ack!753)) #b1)
                (concat #b1 ((_ extract 31 1) (bvadd #x00000001 a_ack!753)))
                (concat #b0 ((_ extract 31 1) (bvadd #x00000001 a_ack!753))))))
  (not (= #x00000000 a!1))))
(assert (let ((a!1 (ite (= ((_ extract 31 31) (bvadd #x00000001 a_ack!753)) #b1)
                (concat #b1 ((_ extract 31 1) (bvadd #x00000001 a_ack!753)))
                (concat #b0 ((_ extract 31 1) (bvadd #x00000001 a_ack!753))))))
  (not (= #x00000000 (bvand a!1 #x00000001)))))
(assert (let ((a!1 (ite (= ((_ extract 31 31) (bvadd #x00000001 a_ack!753)) #b1)
                (concat #b1 ((_ extract 31 1) (bvadd #x00000001 a_ack!753)))
                (concat #b0 ((_ extract 31 1) (bvadd #x00000001 a_ack!753))))))
(let ((a!2 (= #x00000000
              (ite (= ((_ extract 31 31) a!1) #b1)
                   (concat #b1 ((_ extract 31 1) a!1))
                   (concat #b0 ((_ extract 31 1) a!1))))))
  (not a!2))))
(assert (let ((a!1 (ite (= ((_ extract 31 31) (bvadd #x00000001 a_ack!753)) #b1)
                (concat #b1 ((_ extract 31 1) (bvadd #x00000001 a_ack!753)))
                (concat #b0 ((_ extract 31 1) (bvadd #x00000001 a_ack!753))))))
(let ((a!2 (bvand (ite (= ((_ extract 31 31) a!1) #b1)
                       (concat #b1 ((_ extract 31 1) a!1))
                       (concat #b0 ((_ extract 31 1) a!1)))
                  #x00000001)))
  (not (= #x00000000 a!2)))))
(assert (let ((a!1 (ite (= ((_ extract 31 31) (bvadd #x00000001 a_ack!753)) #b1)
                (concat #b1 ((_ extract 31 1) (bvadd #x00000001 a_ack!753)))
                (concat #b0 ((_ extract 31 1) (bvadd #x00000001 a_ack!753))))))
(let ((a!2 (ite (= ((_ extract 31 31) a!1) #b1)
                (concat #b1 ((_ extract 31 1) a!1))
                (concat #b0 ((_ extract 31 1) a!1)))))
  (= #x00000000
     (ite (= ((_ extract 31 31) a!2) #b1)
          (concat #b1 ((_ extract 31 1) a!2))
          (concat #b0 ((_ extract 31 1) a!2)))))))
(assert (bvult (bvadd #xffffffff (bvmul #x00000002 a_ack!753)) #x0000001a))
(assert (let ((a!1 (bvmul #x0000000000000018
                  (concat #x00000000
                          (bvadd #xffffffff (bvmul #x00000002 a_ack!753))))))
  (bvult #x0000000000000000 (bvadd #x0000000000000008 a!1))))
(assert (let ((a!1 (bvmul #x0000000000000018
                  (concat #x00000000
                          (bvadd #xffffffff (bvmul #x00000002 a_ack!753))))))
  (bvult (bvadd #x0000000000000008 a!1) #x0000000000001be9)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!752))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!752)
                                   ((_ to_fp 11 53) b_ack!752)))
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!752)
                                   ((_ to_fp 11 53) b_ack!752))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!752)
                                   ((_ to_fp 11 53) b_ack!752))))))
  (not (fp.eq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfe0000000000000)
                                   ((_ to_fp 11 53) b_ack!752))
                           ((_ to_fp 11 53) b_ack!752))))
      (a!2 ((_ to_fp 11 53)
             roundNearestTiesToEven
             (bvadd #xffffffff (bvmul #x00000002 (bvsub #x00000001 a_ack!753))))))
(let ((a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           a!1
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!2)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 a!3
                 ((_ to_fp 11 53) #x3ff0000000000000))
         (fp.mul roundNearestTiesToEven
                 a!1
                 (fp.div roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!2))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfe0000000000000)
                                   ((_ to_fp 11 53) b_ack!752))
                           ((_ to_fp 11 53) b_ack!752))))
      (a!2 ((_ to_fp 11 53)
             roundNearestTiesToEven
             (bvadd #xffffffff (bvmul #x00000002 (bvsub #x00000001 a_ack!753))))))
(let ((a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           a!1
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!2)))))
(let ((a!4 (fp.sub roundNearestTiesToEven
                   a!3
                   (fp.mul roundNearestTiesToEven
                           a!1
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!2)))))
  (fp.eq a!4 ((_ to_fp 11 53) #x3ff0000000000000))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfe0000000000000)
                                   ((_ to_fp 11 53) b_ack!752))
                           ((_ to_fp 11 53) b_ack!752))))
      (a!2 ((_ to_fp 11 53)
             roundNearestTiesToEven
             (bvadd #xffffffff (bvmul #x00000002 (bvsub #x00000001 a_ack!753))))))
(let ((a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           a!1
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!2)))))
(let ((a!4 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!1
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!2))
                   a!3)))
  (not (fp.lt (fp.abs a!4) ((_ to_fp 11 53) #x3ca0000000000000)))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbfe0000000000000)
                           ((_ to_fp 11 53) b_ack!752))
                   ((_ to_fp 11 53) b_ack!752)))
      (a!2 ((_ to_fp 11 53)
             roundNearestTiesToEven
             (bvadd #xffffffff (bvmul #x00000002 (bvsub #x00000001 a_ack!753)))))
      (a!4 (bvmul #x00000002
                  (bvadd #xffffffff
                         (bvmul #x00000002 (bvsub #x00000002 a_ack!753))))))
(let ((a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!2))))
      (a!5 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1)
                           a!1)
                   (fp.div roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!2)
                           ((_ to_fp 11 53) roundNearestTiesToEven a!4)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven a!3 a!5)
                 a!3)
         a!5))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbfe0000000000000)
                           ((_ to_fp 11 53) b_ack!752))
                   ((_ to_fp 11 53) b_ack!752)))
      (a!2 ((_ to_fp 11 53)
             roundNearestTiesToEven
             (bvadd #xffffffff (bvmul #x00000002 (bvsub #x00000001 a_ack!753)))))
      (a!4 (bvmul #x00000002
                  (bvadd #xffffffff
                         (bvmul #x00000002 (bvsub #x00000002 a_ack!753))))))
(let ((a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!2))))
      (a!5 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1)
                           a!1)
                   (fp.div roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!2)
                           ((_ to_fp 11 53) roundNearestTiesToEven a!4)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven a!3 a!5)
                 a!5)
         a!3))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbfe0000000000000)
                           ((_ to_fp 11 53) b_ack!752))
                   ((_ to_fp 11 53) b_ack!752)))
      (a!2 ((_ to_fp 11 53)
             roundNearestTiesToEven
             (bvadd #xffffffff (bvmul #x00000002 (bvsub #x00000001 a_ack!753)))))
      (a!3 (bvmul #x00000002
                  (bvadd #xffffffff
                         (bvmul #x00000002 (bvsub #x00000002 a_ack!753))))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1)
                           a!1)
                   (fp.div roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!2)
                           ((_ to_fp 11 53) roundNearestTiesToEven a!3))))
      (a!5 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!2)))))
(let ((a!6 (fp.lt (fp.abs (fp.div roundNearestTiesToEven
                                  a!4
                                  (fp.add roundNearestTiesToEven a!5 a!4)))
                  ((_ to_fp 11 53) #x3ca0000000000000))))
  (not a!6)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbfe0000000000000)
                           ((_ to_fp 11 53) b_ack!752))
                   ((_ to_fp 11 53) b_ack!752)))
      (a!2 ((_ to_fp 11 53)
             roundNearestTiesToEven
             (bvadd #xffffffff (bvmul #x00000002 (bvsub #x00000001 a_ack!753)))))
      (a!4 (bvmul #x00000002
                  (bvadd #xffffffff
                         (bvmul #x00000002 (bvsub #x00000002 a_ack!753)))))
      (a!8 (bvmul #x00000003
                  (bvadd #xffffffff
                         (bvmul #x00000002 (bvsub #x00000003 a_ack!753))))))
(let ((a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!2))))
      (a!5 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           a!2)
                   ((_ to_fp 11 53) roundNearestTiesToEven a!4)))
      (a!7 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1)
                           a!1)
                   a!1)))
(let ((a!6 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1)
                           a!1)
                   a!5)))
(let ((a!9 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven a!3 a!6)
                   (fp.mul roundNearestTiesToEven
                           a!7
                           (fp.div roundNearestTiesToEven
                                   a!5
                                   ((_ to_fp 11 53) roundNearestTiesToEven a!8))))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 a!9
                 (fp.add roundNearestTiesToEven a!3 a!6))
         (fp.mul roundNearestTiesToEven
                 a!7
                 (fp.div roundNearestTiesToEven
                         a!5
                         ((_ to_fp 11 53) roundNearestTiesToEven a!8)))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbfe0000000000000)
                           ((_ to_fp 11 53) b_ack!752))
                   ((_ to_fp 11 53) b_ack!752)))
      (a!2 ((_ to_fp 11 53)
             roundNearestTiesToEven
             (bvadd #xffffffff (bvmul #x00000002 (bvsub #x00000001 a_ack!753)))))
      (a!4 (bvmul #x00000002
                  (bvadd #xffffffff
                         (bvmul #x00000002 (bvsub #x00000002 a_ack!753)))))
      (a!8 (bvmul #x00000003
                  (bvadd #xffffffff
                         (bvmul #x00000002 (bvsub #x00000003 a_ack!753))))))
(let ((a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!2))))
      (a!5 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           a!2)
                   ((_ to_fp 11 53) roundNearestTiesToEven a!4)))
      (a!7 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1)
                           a!1)
                   a!1)))
(let ((a!6 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1)
                           a!1)
                   a!5)))
(let ((a!9 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven a!3 a!6)
                   (fp.mul roundNearestTiesToEven
                           a!7
                           (fp.div roundNearestTiesToEven
                                   a!5
                                   ((_ to_fp 11 53) roundNearestTiesToEven a!8))))))
(let ((a!10 (fp.sub roundNearestTiesToEven
                    a!9
                    (fp.mul roundNearestTiesToEven
                            a!7
                            (fp.div roundNearestTiesToEven
                                    a!5
                                    ((_ to_fp 11 53) roundNearestTiesToEven a!8))))))
  (fp.eq a!10 (fp.add roundNearestTiesToEven a!3 a!6))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbfe0000000000000)
                           ((_ to_fp 11 53) b_ack!752))
                   ((_ to_fp 11 53) b_ack!752)))
      (a!3 ((_ to_fp 11 53)
             roundNearestTiesToEven
             (bvadd #xffffffff (bvmul #x00000002 (bvsub #x00000001 a_ack!753)))))
      (a!4 (bvmul #x00000002
                  (bvadd #xffffffff
                         (bvmul #x00000002 (bvsub #x00000002 a_ack!753)))))
      (a!6 (bvmul #x00000003
                  (bvadd #xffffffff
                         (bvmul #x00000002 (bvsub #x00000003 a_ack!753))))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1)
                           a!1)
                   a!1))
      (a!5 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           a!3)
                   ((_ to_fp 11 53) roundNearestTiesToEven a!4)))
      (a!7 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!3)))))
(let ((a!8 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1)
                           a!1)
                   a!5)))
(let ((a!9 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven a!7 a!8)
                   (fp.mul roundNearestTiesToEven
                           a!2
                           (fp.div roundNearestTiesToEven
                                   a!5
                                   ((_ to_fp 11 53) roundNearestTiesToEven a!6))))))
(let ((a!10 (fp.div roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!2
                            (fp.div roundNearestTiesToEven
                                    a!5
                                    ((_ to_fp 11 53) roundNearestTiesToEven a!6)))
                    a!9)))
  (not (fp.lt (fp.abs a!10) ((_ to_fp 11 53) #x3ca0000000000000)))))))))
(assert (let ((a!1 (bvmul #x00000004
                  (bvadd #xffffffff
                         (bvmul #x00000002 (bvsub #x00000004 a_ack!753))))))
  (not (fp.eq (fp.abs ((_ to_fp 11 53) roundNearestTiesToEven a!1))
              ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 ((_ to_fp 11 53)
             roundNearestTiesToEven
             (bvadd #xffffffff (bvmul #x00000002 (bvsub #x00000001 a_ack!753)))))
      (a!2 (bvmul #x00000002
                  (bvadd #xffffffff
                         (bvmul #x00000002 (bvsub #x00000002 a_ack!753)))))
      (a!3 (bvmul #x00000003
                  (bvadd #xffffffff
                         (bvmul #x00000002 (bvsub #x00000003 a_ack!753)))))
      (a!5 (bvmul #x00000004
                  (bvadd #xffffffff
                         (bvmul #x00000002 (bvsub #x00000004 a_ack!753))))))
(let ((a!4 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1)
                           ((_ to_fp 11 53) roundNearestTiesToEven a!2))
                   ((_ to_fp 11 53) roundNearestTiesToEven a!3))))
(let ((a!6 (fp.eq (fp.mul roundNearestTiesToEven
                          (fp.div roundNearestTiesToEven
                                  a!4
                                  ((_ to_fp 11 53) roundNearestTiesToEven a!5))
                          ((_ to_fp 11 53) roundNearestTiesToEven a!5))
                  a!4)))
  (not a!6)))))
(assert (let ((a!1 ((_ to_fp 11 53)
             roundNearestTiesToEven
             (bvadd #xffffffff (bvmul #x00000002 (bvsub #x00000001 a_ack!753)))))
      (a!2 (bvmul #x00000002
                  (bvadd #xffffffff
                         (bvmul #x00000002 (bvsub #x00000002 a_ack!753)))))
      (a!3 (bvmul #x00000003
                  (bvadd #xffffffff
                         (bvmul #x00000002 (bvsub #x00000003 a_ack!753)))))
      (a!5 (bvmul #x00000004
                  (bvadd #xffffffff
                         (bvmul #x00000002 (bvsub #x00000004 a_ack!753))))))
(let ((a!4 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1)
                           ((_ to_fp 11 53) roundNearestTiesToEven a!2))
                   ((_ to_fp 11 53) roundNearestTiesToEven a!3))))
(let ((a!6 (fp.eq (fp.abs (fp.div roundNearestTiesToEven
                                  a!4
                                  ((_ to_fp 11 53) roundNearestTiesToEven a!5)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!6)))))
(assert (let ((a!1 ((_ to_fp 11 53)
             roundNearestTiesToEven
             (bvadd #xffffffff (bvmul #x00000002 (bvsub #x00000001 a_ack!753)))))
      (a!2 (bvmul #x00000002
                  (bvadd #xffffffff
                         (bvmul #x00000002 (bvsub #x00000002 a_ack!753)))))
      (a!3 (bvmul #x00000003
                  (bvadd #xffffffff
                         (bvmul #x00000002 (bvsub #x00000003 a_ack!753)))))
      (a!5 (bvmul #x00000004
                  (bvadd #xffffffff
                         (bvmul #x00000002 (bvsub #x00000004 a_ack!753))))))
(let ((a!4 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1)
                           ((_ to_fp 11 53) roundNearestTiesToEven a!2))
                   ((_ to_fp 11 53) roundNearestTiesToEven a!3))))
  (fp.eq (fp.div roundNearestTiesToEven
                 a!4
                 (fp.div roundNearestTiesToEven
                         a!4
                         ((_ to_fp 11 53) roundNearestTiesToEven a!5)))
         ((_ to_fp 11 53) roundNearestTiesToEven a!5)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbfe0000000000000)
                           ((_ to_fp 11 53) b_ack!752))
                   ((_ to_fp 11 53) b_ack!752))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1)
                           a!1)
                   a!1)))
  (FPCHECK_FMUL_UNDERFLOW a!2 a!1))))

(check-sat)
(exit)
